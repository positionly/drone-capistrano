package main

type Params struct {
	Tasks      string `json:"tasks"`
	BundleArgs string `json:"bundle_args"`
	Debug      bool   `json:"debug"`
}
