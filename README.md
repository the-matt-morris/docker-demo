# Docker Demo

Example of creating Docker container with lightweight Python application.

## Developing

Try it out yourself!  To run this app on your local machine:

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Install VSCode [Remote Containers extension](https://code.visualstudio.com/docs/remote/containers)
3. Clone and open this repo in VSCode
4. From VSCode: `Remote-Containers: Reopen in Container`
5. Running the app locally:

```
streamlit run app.py
```

navigate to `localhost:8051` in a browser.

## Testing

To run the tests:

```
pytest
```

## Future

If this app were to be put into production, we'd want to do the following:

1. Create GitHub workflow that builds our Docker image and pushes it to the [container registry](https://github.com/orgs/RSGInc/packages)
2. In our workflow, run our unit tests from within our container.
3. Tagging our repo triggers a new build of the Docker image and pushing it to the container registry.
4. Install Docker on our production environment.  Pull desired version of our image from the container registry and run the app.
