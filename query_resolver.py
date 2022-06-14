import nltk
import spacy
from pyswip import Prolog

# Loading the spacy model
print("Loading the spacy model...")
nlp = spacy.load('it_core_news_lg')
print("Done.")

# Loading prolog facts and rules
prolog = Prolog()
prolog.consult('prolog/facts2.pl')
prolog.consult('prolog/rules.pl')

# Expection words from the prolog text
noun_exeption = ["baciamano", "carlo"]
adj_exception = ["vecchio", "nuovo", "farnese"]
pron_exception = ["avancorpi"]
num_exception = ["due"]

where_dict = ["trovare", "aprire", "collocare", "rinvenire", "conservare"]

dictionary = {
    "affrescare": ["dipingere", "decorare"],
    "realizzare": ["dipingere", "costruire", "eseguire", "scolpire"],
    "terminare": ["costruire", "edificare", "progettare"],
    "cominciare": ["iniziare"],
    "iniziare": ["cominciare"],
    "sottoporre": ["presentare", "proporre"],
    "partecipare": ["aderire"],
    "opporre": ["rifiutare"],
    "restaurare": ["aggiustare", "ristrutturare", "risanare"],
    "giungere": ["arrivò"],
    "collocare": ["porre", "posizionare", "mettere", "situare", "sistemare"],
    "rinvenire": ["trovare", "recuperare", "scoprire"],
    "conservare": ["custodire", "trovare", "porre"],
    "trovare": ["situato", "porre", "collocare"],
    "rimuovere":["smantellare", "smontare"],
    "scegliere":["nominare"]
}

def resolve_query(nlp_text, query, type='other') -> str:
    verb_question = []
    obj = []

    for token in nlp_text:
        if token.pos_ == "VERB":
            if token.text not in noun_exeption:
                verb_question.append(token.lemma_)
            else:
                obj.append(token.text)
        elif token.pos_ == "NOUN":
            obj.append(token.text)
        elif token.pos_ == "ADJ" or token.pos_ == "PRON" or token.pos_ == "NUM":
            if token.text in adj_exception or token.text in pron_exception or token.text in num_exception:
                obj.append(token.text)

    obj = ' '.join(obj)

    min_obj = ""
    min_where = 25
    min_who_when = 25

    for ans in prolog.query(query):
        if type == "where":
            for verb in verb_question:
                if verb in where_dict:
                    obj_ = ans['X'].decode('utf-8')
                    min_local = nltk.edit_distance(obj_, obj)
                    # print(min_local, ans['Z'].decode('utf-8'))
                    if min_local < min_where:
                        min_where = min_local
                        min_obj = ans['X'].decode('utf-8') + " si trova " \
                                + ans['Y'].decode('utf-8') + " " \
                                + ans['Z'].decode('utf-8')
        else:
            verb = nlp(ans['Y'].decode('utf-8'))
            for v in verb:
                if v.pos_ == "VERB":
                    for vq in verb_question:
                        try:
                            if vq == v.lemma_ or vq in dictionary[v.lemma_]:
                                min_local = nltk.edit_distance(obj, ans['Z'].decode('utf-8').lower())
                                # print(min_local, ans['X'].decode('utf-8'))
                                if min_local < min_who_when:
                                    min_who_when = min_local
                                    min_obj = ans['X'].decode('utf-8')
                        except:
                            pass

    return min_obj