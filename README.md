# Litequiz

Simple quiz application, built principally for learning purposes regarding Rust and Nextjs (app router).

## Database

The database has been populated with questions for some unibo exams:
- [Laboratorio Di Amministrazione Di Sistemi T](https://www.unibo.it/it/didattica/insegnamenti/insegnamento/2021/434713)

- [Laboratorio Di Sicurezza Informatica T](https://www.unibo.it/it/didattica/insegnamenti/insegnamento/2022/487362)

- [Machine Learning and Data Mining M](https://www.unibo.it/en/study/phd-professional-masters-specialisation-schools-and-other-programmes/course-unit-catalogue/course-unit/2024/504034)

- [Ricerca Operativa M](https://www.unibo.it/it/studiare/dottorati-master-specializzazioni-e-altra-formazione/insegnamenti/insegnamento/2023/467997)

Feel free to wipe the database and add your own questions.
As for now you will need to manually insert them.

## How to run in development mode
1. Install [stable Rust](https://www.rust-lang.org/tools/install)
2. Install [npm](https://www.npmjs.com/get-npm)
3. Clone the repository
4. The .env files are already set up for both the frontend and the backend, but you may change them according to your needs
5. Run the backend by going into the `backend-next` folder and running `cargo run`
  - Note that you can install cargo-watch and run `cargo watch -x run` to automatically recompile the backend when a file changes
6. Run the frontend by going into the `frontend-next` folder and running `npm run dev`
7. The app will be running at [http://localhost:3000](http://localhost:3000)

## How to run in production mode
1. Install [docker](https://docs.docker.com/get-docker/). No need to install rust or npm since the app will be running in a docker container
2. Clone the repository
3. Run, in the root folder, `docker-compose up --build`
4. The app will be running at [http://localhost:3000](http://localhost:3000)
