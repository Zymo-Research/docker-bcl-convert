# docker-bcl-convert
Docker container for bcl-convert, an Illumina demultiplexing program
## Usage
### Installation
```
docker pull zymoresearch/bcl-convert
```
### Run demultiplexing
```
docker run -d --name bcl-convert\
         -v /home/ubuntu/data/input:/mnt/run \
         -v /home/ubuntu/data/output/Data/Intensities/BaseCalls/Alignment_1/:/mnt/output \
         bcl-convert \
             --bcl-input-directory /mnt/run \
             --output-directory /mnt/output/ \
             --strict-mode true \
             --force \
             --no-lane-splitting false
```
For more information on running bcl-convert, please refer to Illumina's [official documentation](https://support.illumina.com/sequencing/sequencing_software/bcl-convert/documentation.html).
