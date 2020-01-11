# terraform-aws-ses-templates
Deploy aws-ses-templates in a blink ⚡️

## Usage

### Template folder structure
```ascii
templates/
├── template-name-v1/
│   ├── main.html
│   ├── main.txt
│   ├── subject.txt
├── other-template-name-v1/
│   ├── main.html
│   ├── main.txt
│   ├── subject.txt
```

The previous example will result in generating 2 templates named:
`${stage}-template-name-v1` and `${stage}-other-template-name-v1`

### Terraform module
```hcl
module "ied-ses-templates" {
  source  = "app.terraform.io/ied/ses-templates/aws"
  version = "~>1.0.0"

  stage           = var.stage
  template_folder = "../../templates"
}
```

