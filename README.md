# Thirsty
Find your next favorite bar

![Build Status](https://codeship.com/projects/0dbdb310-00b0-0133-758f-46d3771abf46/status?branch=master)
![Coverage Status](https://coveralls.io/repos/mlg-/thirsty/badge.png)
![Code Climate](https://codeclimate.com/github/mlg-/thirsty.png)


Thirsty is a Ruby on Rails application that allows users to view, add, and review their favorite bars. Users can view a paginated list of bars on the homepage and choose to add a new one.  

![ThirstyHome](http://i58.tinypic.com/2qwllpe.png)

Users may also select a bar from the homepage, which brings them to a details page showing more information about the bar and reviews from past customers.  Users can add their own review and upvote or downvote the reviews of others.

![ThirstyReviews](http://i62.tinypic.com/25z09ds.png)

Administrators can maintain the database by deleting malicious users or inaccurate bars, along with all standard user privileges.

The production version of this application is deployed to https://sothirsty.herokuapp.com.

## Setup

To run the app locally and install any dependencies run the following commands:

```no-highlight
$ git clone https://github.com/mlg-/thirsty.git
$ cd thirsty
$ bundle
```

If this is the first time checking out the app you will also need to create a development and test database:

```no-highlight
$ rake db:setup
```

Open the `.env` file to edit the environment variables:

```no-highlight
AWS_ACCESS_KEY=
AWS_SECRET_KEY=
S3_BUCKET=
USER_PASSWORD=
```

The `AWS_ACCESS_KEY`, `AWS_SECRET_KEY`, and `S3_BUCKET` are used when uploading user photos to Amazon S3.

`USER_PASSWORD` is for seeding user passwords in production.

## ERD

![ThirstyERD 20150710](http://i59.tinypic.com/2liihzb.jpg)
