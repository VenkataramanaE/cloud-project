"# cloud-project" 
# File Upload and Download System

## Overview

This project demonstrates a simple file upload and download system using Spring Boot, AWS S3, JSP, and Bootstrap. Users can upload files to an AWS S3 bucket and download them via a web interface.

## Technologies Used

- **Spring Boot**: Framework for building the backend REST API.
- **AWS S3**: Cloud storage service for storing and retrieving files.
- **JSP**: Java Server Pages for rendering the web pages.
- **Bootstrap**: Front-end framework for styling the web pages.
- **Java**: Programming language used to develop the application.

## Features

- **Upload Resumes**: Users can upload resume files to the AWS S3 bucket.
- **Download Resumes**: Users can view a list of uploaded resumes and download them.

## Project Structure

- `src/main/java/com/example/crm/controller/CandidateController.java`: Controller handling file upload and download operations.
- `src/main/resources/templates/upload.jsp`: JSP page for uploading files.
- `src/main/resources/templates/download.jsp`: JSP page for listing and downloading files.
- `src/main/resources/application.properties`: Configuration file for AWS credentials and S3 bucket details.

## Setup

### Prerequisites

- Java 17
- Spring Boot 3.3.3
- AWS account with S3 bucket created

### Configuration

1. **Set up AWS Credentials:**
   - Configure your AWS credentials and S3 bucket details in `application.properties`:
     ```properties
     aws.access.key=YOUR_AWS_ACCESS_KEY
     aws.secret.key=YOUR_AWS_SECRET_KEY
     aws.s3.bucket=YOUR_S3_BUCKET_NAME
     ```

2. **Build the Project:**
   - Ensure you have Maven or Gradle installed.
   - Navigate to the project root and run:
     ```sh
     mvn clean install
     ```
     or
     ```sh
     ./gradlew build
     ```

3. **Run the Application:**
   - Start the Spring Boot application:
     ```sh
     mvn spring-boot:run
     ```
     or
     ```sh
     ./gradlew bootRun
     ```

4. **Access the Application:**
   - Open your browser and go to `http://localhost:8080/upload` to access the file upload page.
   - Go to `http://localhost:8080/download` to view and download uploaded files.

## JSP Pages

### Upload Page (`upload.jsp`)

The `upload.jsp` page allows users to upload files to the S3 bucket. It uses Bootstrap for styling and displays a success message upon successful upload.

### Download Page (`download.jsp`)

The `download.jsp` page lists all files stored in the S3 bucket. Users can click on a file to download it. Files that have been recently accessed are highlighted in green.

## Example Usage

1. **Uploading a File:**
   - Navigate to the upload page and select a file to upload. Click the "Upload" button to upload the file to S3.

2. **Downloading a File:**
   - Navigate to the download page to see a list of uploaded files. Click on any file name to start downloading it.

## Troubleshooting

- **Unresolved Compilation Problems:** Ensure that all required dependencies are correctly included in your `pom.xml` or `build.gradle` file.
- **AWS Access Issues:** Verify that your AWS credentials and S3 bucket configuration are correct in the `application.properties` file.

## Contributing

Feel free to fork the repository and submit pull requests with improvements or bug fixes.
