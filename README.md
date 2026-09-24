# BookRooms — Rails Hotel Booking MVP

> A Ruby on Rails hotel-booking application developed as part of an RNCP assessment.

BookRooms is a full-stack Ruby on Rails application for discovering hotel rooms at reduced prices and making date-based reservations. It was built from a functional brief and is presented here as a portfolio version of the assessment work.

## Features

- Browse available hotel rooms with price, capacity and location details
- View a dedicated room page
- Create an account and sign in with Devise
- Reserve a room through a date-range picker powered by Flatpickr
- Receive validation feedback and booking confirmation messages
- Maintain consistent Hotel, Room, Booking and User relationships

## Tech stack

- Ruby 3.3
- Ruby on Rails 8.1
- PostgreSQL
- Devise
- Hotwire: Turbo and Stimulus
- Bootstrap 5 and Sass
- Flatpickr

## Data model

The application models a hotel-booking domain:

```
Hotel has many Rooms
Room belongs to Hotel and has many Bookings
Booking belongs to a Room and a User
User has many Bookings
```

Model validations enforce required hotel details, positive room capacity and nightly price, and complete booking dates. Dependent deletion rules keep the database consistent.

## Product delivery

This repository combines the application with the product-delivery artefacts created for the project: backlog, feature sequencing and roadmap. The [Issues](../../issues) tab preserves this planning work.

Some issues document planned extensions beyond the assessment scope; the implemented features are those described above.

See [project-management notes](docs/project-management.md) for context.

## Run locally

```bash
bundle install
bin/rails db:create db:migrate db:seed
bin/dev
```

Then visit `http://localhost:3000`.

## Context

This is an independently published portfolio copy of an RNCP assessment project. The original evaluation repository, its history and local configuration are not included.
