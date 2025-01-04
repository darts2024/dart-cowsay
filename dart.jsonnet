local getExt(varName, default) =
  if varName in std.objectFields(std.objectFields)
  then std.extVar(varName)
  else default;

  
{
  machine: {
    gpu: 0,
    cpu: 100,
    ram: 100,
  },
  job: {
    APIVersion: "V1beta1",
    Spec: {
      Deal: {
        Concurrency: 1,
      },
      Docker: {
        Entrypoint: [
          "/usr/games/cowsay",
          getExt("Message", "Pass me an input called Message, like darts run cowsay:v1.0.0 -i Message=moo")
        ],
        Image: "ghcr.io/darts2024/cowsay:v1.0.0",
      },
      Engine: "Docker",
      Network: {
        Type: "None",
      },
      PublisherSpec: {
        Type: "local",
      },
      Resources: {
        GPU: "",
      },
      Timeout: 500,
      Verifier: "Noop",
    },
  },
}
