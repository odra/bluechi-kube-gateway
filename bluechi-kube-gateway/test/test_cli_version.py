from bluechi_kube_gateway.server import cli


def test_version_ok(clirunner):
    res = clirunner.invoke(cli, 'version')

    assert 0 == res.exit_code
    assert 'v0.1.0' == res.output.strip()
