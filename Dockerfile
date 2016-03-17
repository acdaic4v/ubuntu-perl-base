# Dockerfile für Perl Basis Image
# acdaic4v 13.08.2015
# Beinhaltet grundlegende Perl Module
FROM ubuntu:15.10
MAINTAINER acdaic4v <acdaic4v@sloervi.de>

# Pakete zum installieren von Perl- Modulen
RUN apt-get update && apt-get install -y cpanminus make apt-utils \
	gcc git vim wget \
	zlib1g-dev libexpat1-dev 

# Grundlegende Perl Module
RUN cpanm Class::HPLOO \
&&  cpanm Date::Calc \
&&  cpanm Digest::SHA \
&& cpanm Excel::Writer::XLSX \
&&  cpanm Test::NoWarnings \
&&  cpanm Test::Tester \
&&  cpanm File::Basename \
&&  cpanm FileHandle \
&&  cpanm JSON \
&&  cpanm Log::Log4perl \
&&  cpanm Moose \
&&  cpanm namespace::autoclean \
&&  cpanm Redis \
&&  cpanm Spreadsheet::WriteExcel \
&&  cpanm Time::Local \
&&  cpanm Time::localtime \
&&  cpanm utf8 \
&&  cpanm XML::Parser \
&&  cpanm XML::Simple \
&&  cpanm YAML 

# CPAN- Verzeichnis wieder aufräumen
RUN rm -rf .cpanm

