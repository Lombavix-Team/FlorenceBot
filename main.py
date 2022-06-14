import os
import random
import signal
import sys
from query_resolver import *
from multimediaMatcher import *

# Import the speech recognition module
import speech_recognition as sr
# Create an istance of the recognizer
recognizer_instance = sr.Recognizer()

# Import the required module for text to speech conversion
from gtts import gTTS
# This module is imported so that we can play the converted audio
from pygame import mixer
mixer.init()

# GUI libraries
from PyQt5.QtCore import Qt as qtC
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QMainWindow, QApplication, QPushButton, QLineEdit, \
    QListWidget, QListWidgetItem, QAbstractItemView, QMessageBox, QLabel
from PyQt5.QtGui import QPixmap
signal.signal(signal.SIGINT, signal.SIG_DFL)

def textToSpeech(text: str, audio_id: int, opt: str) -> None:
    # FOR LINUX
    #os.system("say " + text)

    # FOR WINDOWS
    # Play the text (google text to speech conversion)
    myobj = gTTS(text=str(text), lang='it', slow=False)

    sound_path = str(audio_id) + "audio.mp3"
    myobj.save(sound_path)

    if opt=='load':
        mixer.music.load(sound_path)
    elif opt=='enqueue':
        mixer.music.queue(sound_path)
    else:
        print("Invalid option - error")
        return

    # if the audio is not already running
    if not mixer.music.get_busy():
        mixer.music.play()

who_answer = ["È stato", "Certamente è stato", "Ovviamente è stato", "Senza dubbio è stato", \
                "Come è noto, è stato", "Come è ben noto, è stato"]
when_answer = ["È successo nel", "È avvenuto nel", "È capitato nel"]
no_answer = ["Mi dispiace, non trovo una risposta", "Risposta non trovata", "Non so che dire"]

# Dekstop APP class definition
class App(QMainWindow):
    def __init__(self):
        super().__init__()
        self.title = 'Florence Chatbot'
        self.left = 300
        self.top = 300
        self.width = 600
        self.height = 400
        self.thread = None
        self.threadMain = None
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setFixedSize(self.width, self.height)
        self.setGeometry(self.left, self.top, self.width, self.height)

        self.textbox = QLineEdit(self)
        self.textbox.move(10, 330)
        self.textbox.resize(500, 45)
        self.textbox.setPlaceholderText("Fammi una domanda ...")
        
        # Logo
        self.label = QLabel(self)
		# Load image and it to the label
        self.pixmap = QPixmap('img/logo_small.png')
        self.label.setPixmap(self.pixmap)
        # Resize the label according to image size
        self.label.resize(self.pixmap.width(),
						self.pixmap.height())
        self.label.move(50,-120)

        # Button send message and speak
        self.button = QPushButton('Send', self)
        self.button.move(515, 360)
        self.button.resize(75, 32)

        self.button_audio = QPushButton('Speak', self)
        self.button_audio.move(515, 320)
        self.button_audio.resize(75, 32)

        # Logger
        self.list_widget = QListWidget(self)
        self.list_widget.resize(580, 180)
        self.list_widget.move(10, 120)

        # connect button to function on_click
        self.button.clicked.connect(self.process_text)
        self.button_audio.clicked.connect(self.on_click_audio)
        
        self.audioIdx = 0
        self.show()

    def keyPressEvent(self, event):
        # If the enter key is pressed, send the text to the bot
        if event.key() == qtC.Key_Return:
            self.process_text()

    @pyqtSlot()
    def process_text(self):
        question = self.textbox.text().lower()

        if question == "":
            QMessageBox.about(self, "Error", "La domanda non può essere vuota!")
        else:
            nlp_text = nlp(question)
            nlp_arr = []
            [nlp_arr.append(token.text) for token in nlp_text]
            
            # Show the question on screen
            item = QListWidgetItem('[UTENTE] ' + question)
            item.setForeground(qtC.red)
            self.list_widget.addItem(item)
            QAbstractItemView.scrollToBottom(self.list_widget)

            response = ""
            result = ""
            
            if "chi" in nlp_arr:
                result = resolve_query(nlp_text, 'query_who_what(X,Y,Z)')
                if result != "":
                    response = random.choice(who_answer) + " " + result
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    response = random.choice(no_answer)
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            elif "quando" in nlp_arr:
                result = resolve_query(nlp_text, 'query_when(Z,Y,X)')
                if result != "":
                    response = random.choice(when_answer) + " " + result
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    response = random.choice(no_answer)
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            elif "dove" in nlp_arr:
                result = resolve_query(nlp_text, 'query_where(X,Y,Z)', 'where')
                if result != "":
                    response = result
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    response = random.choice(no_answer)
                    self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            else:
                response = "Non ho capito, puoi ripetere?"
                self.list_widget.addItem(QListWidgetItem('[FLORENCE_BOT] ' + response))
                QAbstractItemView.scrollToBottom(self.list_widget)

            # Clean the textbox
            self.textbox.setText("")
            
            # This, in WINDOWS removes the audio files
            os.system("del *.mp3")
                        
            # Unload the currently loaded music to free up resources
            mixer.music.unload()
            
            textToSpeech(response, self.audioIdx, 'load')
            self.audioIdx += 1
            
            if result != "":
                # If there is a related image stored
                # We use the "&" operator and not the "and" operator because
                # the second one performs the short-circuit evaluation that
                # doesn't allow the second function call to be always executed
                if multimediaMatcher(response) & multimediaMatcher(question):
                    textToSpeech("Ho trovato delle immagini correlate", self.audioIdx, 'enqueue')
                    self.audioIdx += 1
                    


    @pyqtSlot()
    # Callback function for clicking on the audio button
    # Using the default computer mirophone, the speech recognizer captures the audio
    # and uses google (with IT language) to perform the speech to text.
    def on_click_audio(self):
        with sr.Microphone() as source:
            recognizer_instance.adjust_for_ambient_noise(source)
            
            QAbstractItemView.scrollToBottom(self.list_widget)
            print("Sono in ascolto... parla pure!")
            audio = recognizer_instance.listen(source)
            
            QAbstractItemView.scrollToBottom(self.list_widget)
            print("Ok! sto ora elaborando il messaggio!")
        try:
            text = recognizer_instance.recognize_google(audio, language="it-IT")
            print("Google ha capito: \n", text)
            self.textbox.setText(text)

        except Exception as e:
            print(e)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = App()
    sys.exit(app.exec_())