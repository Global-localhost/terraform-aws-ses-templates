locals {
  folders = [for file in fileset(var.template_folder, "*/*.html") : dirname(file)]

  templates = length(local.folders) > 0 ? [for folder in local.folders :
    {
      "name" : "${var.stage}-${folder}"
      "subject" : "${var.template_folder}/${folder}/subject.txt"
      "html" : "${var.template_folder}/${folder}/main.html"
      "text" : "${var.template_folder}/${folder}/main.txt"
    }
  ] : []
}
