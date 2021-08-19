# Take Home Test

### Preface

ClarusOne is a pharmaceutical sourcing company whose main objective is to source pharmaceutical products at the best price for their customers. 
In this sourcing process, different suppliers make offers for certain products and then the ClarusOne team make a decision on which submitted offers should be awarded or rejected. 

In this test we are going to look at a simplified subsection of this flow which will be defined in the task section below. 

### Task

Please open the InitSchema.sql file which lives in `/resources/db/migration/common` \
From the sql file, you will see there are 4 tables - supplier, product, offer and offer item.
To give a short description of the flow -
- A product is a representation of a pharmaceutical drug.
- A supplier is a user that wants to sell products.
- An offer item is an entity which contains a product, and a proposed price and volume for that product.
- An offer is a logic grouping of offer items.
- A supplier can submit an offer which will contain one or more items.
- The supplier can subsequently update an offer or delete the offer.

This project contains a skeleton Spring Boot Application which is connected to an in-memory db and initialises the tables in the database using the script mentioned above (using flyway db migration tool). Your task is to model these tables and expose data via endpoints which are outlined below. \

Expose the following REST endpoints - 

1. An endpoint which returns all offers for a given supplier.
2. An endpoint which returns a specific offer for a given supplier.
3. An endpoint which creates an offer with offer items.
4. An endpoint which updates an offer. You are free to decide what fields to update.
5. An endpoint which deletes an offer and its associated offer items.

There are no strict requirement to testing these endpoints, or the underlying implementation, but we are very interested in seeing your approach to testing and how you decide to test different parts of the application.

This is a very open-ended assignment and there is no one way as to how it should be implemented. \
We are looking to get a sense of how you like to write and test code, so show us what you can do! 

### Guidelines
You will notice that the TakeHomeTestApplication class is written in Kotlin however there is NO obligation to write the task in Kotlin. \
The application can be implemented using any combination of the following languages:

- Java
- Kotlin
- Groovy

You are welcome to add any 3rd party libraries/frameworks. The project is already set up to support Java & Kotlin, however if you want to use Groovy, you'll need to modify the build file to support compilation of this language.

### Running the application

You will need to be running Java 11 locally as a minimum version. \
In order to boot the application you should run the following command inside the project directory - 

```shell script
./gradlew bootRun
```

Or, simply load the project into Intellij and run the project from TakeHomeTestApplication.kt

You will see from the application.properties file that the application is configured to work against an in-memory H2 database for the purposes of this test.
If you want to view this database when running the application then you can do so from the following link - http://localhost:8080/h2-console
You will then see a console in which you need to input the JDBC URL, username and password, which can be found in the application.properties file. 

Thee is also a seed data sql script which can be modified if you wish to add more data when manually testing against the application. 
It can be found `/resources/db/migration/seed`

### Running the test suite

In order to run the tests use the following command - 

```shell script
./gradlew test
```

### GitHub
- Clone or download this repo (do not fork it)
- Push your solution to a private GitHub repo in your account
- When your solution is complete, add your ClarusONE contact as a collaborator to this repo, so we can access

### Evaluation

While we would ideally like to receive a complete solution i.e. a solution which contains all of the relevant endpoints, we're more interested in the quality of the solution than completeness. In other words, a high quality solution that omits one endpoint will receive more credit than a complete, but low-quality solution.

One measure of the quality of a solution is it's flexibility, e.g. can the endpoint filter on different fields? Or can you update one or many fields in a patch request.
