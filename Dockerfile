# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /app

# install dependencies
RUN pip install requests fastapi uvicorn[standard]

# copy the content of the local src directory to the working directory
COPY . .

EXPOSE 8000

# command to run on container start
# uvicorn main:app --reload
CMD [ "uvicorn", "main:app", "--reload"]