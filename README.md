docker-asciidoc
===============

Run [asciidoc](http://www.methods.co.nz/asciidoc/) without installing asciidoc.

How To Run from Docker Hub
-------------------

The [fstab/asciidoc](https://registry.hub.docker.com/u/fstab/asciidoc) image contains a Ubuntu Linux operating system with [asciidoc](http://www.methods.co.nz/asciidoc/) installed.

Example: If you want to convert a manpage document `~/my-file.txt` into a Unix manpage using asciidoc's [a2x](ttp://www.methods.co.nz/asciidoc/chunked/ch24.html) command, you can run

   ```bash
   docker run -v ~:/home/asciidoc/work/ -t fstab/asciidoc a2x --doctype manpage --format manpage my-file.txt
   ```

This will pull the image from docker hub, start the container, and run _a2x_ within the container.

How To Build from Source
-----------------

1. Clone [fstab/docker-asciidoc](https://github.com/fstab/docker-asciidoc) from GitHub.

   ```bash
   git clone https://github.com/fstab/docker-asciidoc.git
   ```
2. Build the docker image

   ```bash
   cd docker-asciidoc
   docker build -t="fstab/asciidoc" .
   ```

3. Run with the same command as described above.

   ```bash
   docker run -v ~:/home/asciidoc/work/ -t fstab/asciidoc a2x --doctype manpage --format manpage my-file.txt
   ```
