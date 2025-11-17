terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "1.12.1"
}

# Define which provider plugins are to be included
providers {
  # Include the newest "aws" provider version in the 1.0 series.

  # Include both the newest 1.0 and 2.0 versions of the "google" provider.
  # Each item in these lists allows a distinct version to be added. If the
  # two expressions match different versions then _both_ are included in
  # the bundle archive.
  aviatrix = {
    versions = ["3.1.6",]
    source = "AviatrixSystems/aviatrix"
  }

  # Include a custom plugin to the bundle. Will search for the plugin in the
  # plugins directory and package it with the bundle archive. Plugin must have
  # a name of the form: terraform-provider-*, and must be built with the operating
  # system and architecture that terraform enterprise is running, e.g. linux and amd64.
  # customplugin = {
  #   versions = ["0.1"]
  #   source = "myorg/customplugin"
  # }
}
