# How to organize project folders implementing remote working directories.

## Outline
I wanted to be able to easily run my analysis workflow (based in python, mostly jupyter notebook) both locally and on remote servers. In certain cases the analysis will not work on local resources, but here I want to generalize the structure, so if I am not working with huge datasets I can run it easily on my laptop.

## Strategy

- Construct a central 'data_dir' directory with all accumulated, needed data sets. In here datasets can be stored directly, or linked from other directories. The former is possibly useful for smaller 'exotic' datasets, not needed by other people in the workgroup, or under development. The latter could be datasets like Argo datasets or ECCO, which should be centrally accessible on the server/cluster

- All necessary setup and analysis scripts, notebooks or other code will be residing in a 'code_dir', which is linked from an appropriately named subfolder of '/root/notebooks' into the project folder, these will be centrally backed up to github.

- All the output (plots, movies and data) should be organized into a 'ouput_dir' directory, TBD how that is exactly organized...

These things should be enforced by a standard setup cell in each notebook.

## Example Directory structure
.
* root
  * projects
    * project1 (can be linked to higher storage dir)
      * data_dir
        * dataset1(local)
        * dataset2(link)
      * code_dir(link pointing to root/notebooks/project1)
        * paper_a
          * I have to structure this with local backup of overleaf papers
        * paper_b
        * dataset_c
        * in_progress_d
      * output_dir
        * ?
   * project2
      * ...
 * code
   * downloaded_code
 * notebooks
   * project1
    * setup_notebook (ideally this copies and sets up the full project atuomatically)
   * project2
