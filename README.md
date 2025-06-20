# Run and Compile Mitsuba 0.6 in Docker

[Mitsuba 0.6](https://github.com/mitsuba-renderer/mitsuba) is the original version of Mitsuba, a research-oriented rendering system. It is written and C++, and it contains different plugins that implement a variety of rendering functionalities ranging from materials and light sources to complete rendering algorithms.

However, it was implemented a long time ago, and as such, compiling the system in up-to-date systems can be complex due to incompatible versions of the different software packages (Python 2.7, C++ development libraries, etc.).

**This repository allows to compile and run Mitsuba 0.6 in a Docker container**.   
The original Mitsuba 0.6 source code is placed and a submodule of this repository and mounted as a volume on the Docker container, allowing the user to modify it from outside but build it inside the Docker container.

## Build and run the Docker container
Assuming you have [Docker]() installed, run the following commands to build the container and starting it:
```bash
docker compose build
docker compose up -d
```
Then, enter the container:
```bash
docker exec -it {name_of_the_container} bash
```
Inside the container, compile [Mitsuba 0.6 manually following the instructions](https://mitsuba-renderer.org/releases/current/documentation_lowres.pdf) or just execute the compilation script:
```bash
bash compile.sh
```
Now, you can run it:
```bash
mitsuba path_to_the_scene.xml
```