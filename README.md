# docker-bcl-convert

Docker image for [bcl-convert](https://support.illumina.com/sequencing/sequencing_software/bcl-convert.html), Illumina's tool for converting BCL files to FASTQ.

## Usage

### Check version

```bash
docker run --rm zymoresearch/bcl-convert:latest --version
```

### Run demultiplexing

```bash
docker run --rm \
  -v /path/to/run:/mnt/run \
  -v /path/to/output:/mnt/output \
  zymoresearch/bcl-convert:latest \
    --bcl-input-directory /mnt/run \
    --output-directory /mnt/output \
    --sample-sheet /mnt/run/SampleSheet.csv
```

For all available options, see Illumina's [official documentation](https://support.illumina.com/sequencing/sequencing_software/bcl-convert/documentation.html).
