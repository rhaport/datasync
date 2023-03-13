## Introduction

This document is supposed to describe the software architecture of the application DataSync with requirements defined in DS-A-1. The goal of this document to give the developers a top-to-bottom picture of how to implement the different functionality of the application. Also, the user interface should be well defined as well as test strategy.

Until the document is completed, it should be considered as a proposal. All parts of this document are open for discussions and changes.

## Scope

This document is dedicated to developers of the DataSync project.

## Top-level view and UI

As the application will run on a backup server and will be used by administrators of the backup servers, the CLI seems to be sufficient for an efficient usage of the application.

The application should do some specific tasks upon execution. When these tasks finish, the application should terminate. That also means that application should not run as a daemon or service.

The application should execute dedicated tasks upon specifying dedicated options in the command line. The application should also list all available options upon user request.

The different option could trigger a task like copying data to a remote machines, but also configure the system or inform about past issues, successfully executed operations and configuration.

The configuration of the application should be stored in a configuration file.

Possible calls of the application:

* for help

  ```bash
  $ datasync --help
  ```
* for configuration (based on the content of the configuration file)

  ```bash
  $ datasync --config
  ```
* for synchronization (based on the content of the configuration file)

  ```bash
  $ datasync --sync
  ```
* for monitoring (state of the configuration and last operations)

  ```
  $ datasync
  ```

Also, short names for options can be supported.

## Programming language

As the application is going to be CLI based, bash or Python seem to be a good choice. As the majority of functionality will be performed by other tools, the DataSync application should mostly just call other applications with certain parameters or read the information from certain files. Parsing the configuration file seems to be most tricky part of the implementation.

Decision: TBA

## Functionality

### Configuration

To simplify the user interface of the application, it would be beneficial to keep all the configuration in a single file. This file should be in a well known format like json, toml or ini.

### Synchronization

TBA

### Monitoring

TBA

## Setup

*(here we can talk about dependencies and how to easy setup them)*

## Verification

*(here we can talk about verification. I would think towards docker)*
