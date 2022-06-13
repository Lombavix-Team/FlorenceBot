# FlorenceBot
A fully interactive domain-specific chatbot implemented using Prolog and PySwip.

<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="client/img/logo_large.png" alt="Logo">
  </a>

  <h3 align="center">Cloud-based data visualization and analysis tool for telemetry data</h3>

  <p align="center">
    <br />
    <a href="figs/anomalyx_demo.gif">View Demo</a>
    ·
    <a href="issues">Report Bug</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contacts">Contacts</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
A chatbot is basically software that simulates and processes written and spoken human conversations, allowing users to interact with digital devices as if they were communicating with a real person. The proposed work is **FlorenceBOT**, a chatbot implemented using python and pyswip. The knowledge of this chatbot is domain-specific and it regards the [Cathedral of Santa Maria del Fiore](https://duomo.firenze.it/en/discover/cathedral) in Florence.

More specific, we provide a software with a UI that allows the user to write (or speak) the question about the specific topic, and read the answer (or listen) almost instantaneously.
According to [this paper](https://www.researchgate.net/publication/331746678_A_Survey_on_Conversational_AgentsChatbots_Classification_and_Design_Techniques), this chatbot can be classified as:
* **Fully intercative**: because it is both text and speech based;
* **Task-Oriented**: because it helps the user to aquire knowledge;
* **Rule-based**: because it does not rely on a ML technique, but instead it is based on Prolog rules;
* **Domain-specific**: FlorenceBot has knowledge base about Santa Maria del Fiore.

<p align="center" width="100%">
    <img width="60%" src="figs/anomalyx_demo.gif"> 
</p>


### Built With

This section lists any major frameworks/libraries used in this project.

* [PySwip](https://github.com/yuce/pyswip) (v. 0.2.10)
* [Spacy](https://spacy.io/) (v. 3.0.6)
* [NLTK](https://www.nltk.org/) (v. 3.6.2)
* [PyQt5](https://github.com/PyQt5) (v. 5.15.4)
* [gTTs](https://github.com/pndurette/gTTS) (v. 2.2.4)

_For more details, please read the [requirements.txt](/requirements.txt) file_

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

To get your system up and running, follow these simple steps.

### Prerequisites

First, you need to have an **account on any cloud platform** from which you can access **cluster services**. In our case, we used Google Cloud Dataproc clusters, but any other cloud provider should do.

Following the next section, this is the architecture you will end up with.

<p align="center" width="100%">
    <img width="60%" src="figs/system_architecture.PNG"> 
</p>

### Installation

Make sure to have two clusters on which you can deploy the following technologies:

1. Apache ZooKeeper (v. 3.7.1) and Apache Kafka (v. 3.1.0) on one cluster.

* ZooKeeper is required in order to run Kafka. The following example shows how to properly setup on each cluster node the ```zoo.cfg``` file in the ```conf``` directory under the ZooKeeper home, to run a ZooKeeper ensemble over a three-nodes cluster:
  ```
  ticktime=2000
  dataDir=/var/lib/zookeeper
  clientPort=2181
  initLimit=20
  syncLimit=5
  server.1=hostnameA:2888:3888
  server.2=hostnameB:2888:3888
  server.3=hostnameC:2888:3888
  ```
* On each cluster node, the following key properties must be specified in the ```server.properties``` file, located in the ```config``` directory under the Kafka home.
  * ```broker.id=UID``` (where UID is a unique ID for this broker).
  * ```listeners=PLAINTEXT://internalIP:9092```
  * ```advertised.listeners=PLAINTEXT://externalIP:9092```
  * ```zookeeper.connect=hostnameA:2181,hostnameB:2181,hostnameC:2181/kafka_root_znode```

* If you're using Google Cloud Dataproc clusters, you don't need to manually install and configure Spark as it is already included in the cluster's VM image.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Usage
Before launching the streamlit client, make sure that:

* Both Kafka and Spark clusters are up and running.
* Specify the correct broker IPs and topic names in configuration.ini.
* The data source is active and publishing on the correct Kafka topic. For test purposes, you could run the data stream producer process provided in this repo:
  ```sh
  python ./datastream_producer.py
  ```
* Start the Spark streaming analysis script on the spark cluster:
  ```sh
  spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.12:3.1.2 ./structured_stream_process.py
  ```

Finally, you are ready to run the client:
```sh
streamlit run ./main.py
```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap
These are some of the features we would like to add to this project.

- [x] Add anomaly threshold real-time choice
- [ ] Multidriver support (this involves kafka topics re-organization)
- [ ] Add statefulness to streamlit
    - [ ] Counter variables
    - [ ] Data dict
- [ ] Use MLlib into the Spark SS data analysis module

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contacts

* Andrea Lombardi - [Linkedin](https://www.linkedin.com/in/andrea-lombardi/)
* Vincenzo Silvio - [Linkedin](https://www.linkedin.com/in/vincenzo-silvio-0413321b8/)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments
This space lists all the helpful resources we would like to give credit to.

* Thanks to [this repo](https://github.com/BesTeam-ing/AI-2021), taken as an example baseline from which we developed our system.
* Thanks also to _[Cultural Stories Web Language - Un Formalismo per rappresentare le storie culturali nel Web](http://smcm.isasi.cnr.it/lab/cswl-un-formalismo-per-rappresentare-storie-culturali-nel-web/)_

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screenshot.png
