<img align="center" src="https://assets.elixirmentor.com/em_banner.png"/>

# Task Manager

Subscribe to [Elixir Mentor](https://www.youtube.com/channel/UChbS_z6KHQiIu9et38O37eQ) if you're interested in learning how to build scalable, production ready APIs in Elixir and some DevOps along the way, please subscribe to my channel Backend Stuff, and start your backend development journey.

This is a multi-tenant task management application built with Phoenix, Ash Framework, and LiveView. The project demonstrates production-ready patterns including:

- **Multi-tenancy** - Full organization-based multi-tenancy with isolated data
- **User Authentication** - Secure authentication with email/password, password reset, and email confirmation
- **Organization Management** - Create and manage organizations with member roles and permissions
- **Ash Framework** - Leverages Ash Framework 3.0 for powerful data modeling, authorization, and API generation
- **Modern UI** - Built with Phoenix LiveView and TailwindCSS for a reactive user experience

## Tech Stack

- **Phoenix Framework 1.8** - Web framework
- **Ash Framework 3.0** - Resource-based framework for data modeling and APIs
- **AshAuthentication** - Comprehensive authentication solution
- **AshPostgres** - PostgreSQL data layer for Ash
- **Phoenix LiveView** - Real-time, server-rendered UI
- **TailwindCSS** - Utility-first CSS framework
- **PostgreSQL** - Primary database

## Getting Started

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Development Commands

- `mix setup` - Install dependencies, set up database, compile assets
- `mix phx.server` - Start the Phoenix server
- `iex -S mix phx.server` - Start the server in interactive mode
- `mix test` - Run the test suite
- `mix precommit` - Run pre-commit checks (compile, format, test)

## Project Structure

This application is organized into Ash Framework domains:

- **Accounts** - User authentication, registration, and password management
- **Organizations** - Multi-tenant organization and membership management

Each domain contains Ash Resources that define:
- Data attributes and relationships
- Actions (CRUD operations)
- Authorization policies
- Custom business logic

## Multi-Tenancy

The application uses organization-based multi-tenancy where:

- Each user belongs to a primary organization
- Users can be members of multiple organizations through memberships
- Organizations have owners and configurable member limits
- Data is isolated by tenant using Ash's built-in multi-tenancy support

## SUPPORT ELIXIR MENTOR

🌐🌐 My website [Elixir Mentor](https://elixirmentor.com/)

🎙🎙 Check out my podcast [Elixir Mentor](https://elixirmentor.com/podcast)

🆘🆘 NEED HELP?? Join the [Discord Server](https://discord.gg/HcnjPsWATg)

## FOLLOW ME
Linktree: [@jacob_luetzow](https://linktr.ee/jacob_luetzow)

Join the [Discord server](https://discord.gg/HcnjPsWATg)
