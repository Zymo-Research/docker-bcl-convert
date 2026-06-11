# docker-bcl-convert

Docker image for [bcl-convert](https://support.illumina.com/sequencing/sequencing_software/bcl-convert.html), Illumina's tool for converting BCL files to FASTQ.

## Pull

```bash
docker pull zymoresearch/bcl-convert:4.4.4
# or latest
docker pull zymoresearch/bcl-convert:latest
```

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
    --sample-sheet /mnt/run/SampleSheet.csv \
    --strict-mode true \
    --force
```

For all available options, see Illumina's [official documentation](https://support.illumina.com/sequencing/sequencing_software/bcl-convert/documentation.html).

## Build locally

The image is built from an Illumina-provided RPM using `alien` on Ubuntu 24.04.

```bash
git clone https://github.com/Zymo-Research/docker-bcl-convert.git
cd docker-bcl-convert
docker build -t bcl-convert:local .
```

## Versions

| Image tag | bcl-convert version |
|-----------|---------------------|
| `latest`, `4.4.4` | 4.4.4 |
| `4.3.13` | 4.3.13 |
| `4.2.7` | 4.2.7 |
