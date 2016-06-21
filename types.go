package main

type Params struct {
	Tasks      string `json:"tasks"`
	BundlePath string `json:"bundle_path"`
	BundleArgs string `json:"bundle_args"`
	Debug      bool   `json:"debug"`
}
