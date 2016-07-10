import express from 'express';
import graphqlHTTP from 'express-graphql';
import myGraphQLSchema from 'schema';

const app = express();

const graphOptions = {
    schema  : myGraphQLSchema,
    graphiql: true
};

app.use('/graphql', graphqlHTTP(graphOptions));

app.listen(3000);
