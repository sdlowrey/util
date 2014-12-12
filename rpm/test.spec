%define with_python 0%{!?_without_python:1}

Summary: Honking Thing
Name: honk
Version: 1.0
Release: 0
License: GPL
Group: Applications/System
Vendor: Nobody

Source0: load.txt

%description
The main thing of this

%package server
Summary: Honk Server
Group: Coolness
Requires: crap

%description server
The server

%prep

#[[ -r /tmp/shit ]] || { echo "no shit"; exit 1; }

echo prepping

%if ! %{with_python}
echo "NO PYTHON"
%define _without_python --without-python
%endif

%build
echo building

%files

