![example workflow](https://github.com/bin2bin-applications/jupyter-notebook/actions/workflows/docker-image.yml/badge.svg)

<h1 id="app:name">Jupyter Notebook</h1>

<img id="app:logo" src="https://cdn.jsdelivr.net/gh/bin2bin-applications/jupyter-notebook@master/logo.png" width="180" height="180"></img>

## Developer

<p>Click <a id="app:developer" href="https://jupyter.org/">here</a> to go to developer site</p>

## Description

<p id="app:short-description">The Classic Notebook Web Interface</p>

<p id="app:long-description">The Jupyter Notebook is the original web application for creating and sharing computational documents. It offers a simple, streamlined, document-centric experience. Free software, open standards, and web services for interactive computing across all programming languages.</p>

## Supported Architectures

The architectures supported by this image are:

| Architecture | Available | Tag    |
| :----------: | :-------: | ------ |
|    x86-64    |    ✅     | latest |

## Version Tags

The version tags available for this image are:

|  Tag   | Available | Description                           |
| :----: | :-------: | ------------------------------------- |
| latest |    ✅     | Stable releases with Ubuntu baseimage |

## Docker Pull

```bash
docker pull ghcr.io/bin2bin-applications/jupyter-notebook:latest
```

## Docker Run

```bash
docker run -d --volume /tmp/app:/app -p 8080:8080 ghcr.io/bin2bin-applications/jupyter-notebook:latest
```
