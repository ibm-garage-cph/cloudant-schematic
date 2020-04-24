# Schematics cloudant provision example

## Objective & Prereqs
Provision a cloudant database via a Schematics terraform.

Be sure to be logged into the IBM Cloud account, and set to the correct account if you have access to multiple accounts.


### 1. Create a schematics workspace
* Go to : [Catalog and search for Schematics](https://cloud.ibm.com/catalog?search=schematics#search_results)

* Select [Create workspace](https://cloud.ibm.com/schematics/workspaces/create)

* Fill out the following attributes:
Workspace name: *cloudant-<initials>*

Resource group: *bootcamp-2020-rg*

Select *Create workspace*

### 2. Fill out settings
GitHub repository URL: https://github.com/ibm-garage-cph/cloudant-schematic

Select *Save template information*

### 3. Fill out variables
You must change value for `cloudant_name`, if not the install "apply" will fail.
Please change it according to the description given.

Select *Save changes*

### 4. Generate plan
Select *Generate plan*.
View log and see it is error free. If not correct the error(s).


### 5. Apply plan
Select *Apply plan*.
View log and see it is error free. If not correct the error(s).


### 6. See cloudant service
Look in the resource list and find your cloudant database.


### 7. Delete workspace and resources again
Go back to the schematics workspace and delete it including resources, by selecting both:
* Delete workspace
* Delete all associated resources

Type in the name of the schematics workspace as a precaution.
Last select *Delete*

### 8.Optional: Follow the deletion of thw workspace again
Notice in the workspace list the deletion in progress. And in the resource list how the cloudant database disappears again.

