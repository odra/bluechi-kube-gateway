import click

from . import __version__ as v


@click.group
def cli() -> None:
    """
    Top parent cli group to contain all subcommands.
    """
    pass


@cli.command
def version() -> None:
    """
    Display this application version.
    """
    click.echo(f'v{v}')


def run() -> None:
    """
    Run the bluechi-kube-gateway server.
    """
    cli()
