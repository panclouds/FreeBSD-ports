# $FreeBSD$

PORTNAME=	iocage
PORTVERSION=	1.2
PORTREVISION=	6
CATEGORIES=	sysutils python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

PATCH_SITES=	https://github.com/iocage/iocage/commit/
PATCHFILES=	2883770ae46731a2a94cd41e6d01d32cec6f1f21.patch:-p1 \
		753b2f35731423597d7f51f33427b6d619fcd0b5.patch:-p1 \
		b47dc2c47ff125d644720b03f598a9caf4e08192.patch:-p1

MAINTAINER=	grembo@FreeBSD.org
COMMENT=	FreeBSD jail manager written in Python3

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytest-runner>=2.0.0:devel/py-pytest-runner@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}netifaces>0:net/py-netifaces@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}click>=6.7:devel/py-click@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}tqdm>=4.10.0:misc/py-tqdm@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}coloredlogs>0:devel/py-coloredlogs@${PY_FLAVOR} \
		ca_root_nss>0:security/ca_root_nss \
		${PYTHON_PKGNAMEPREFIX}texttable>=0.8.7:textproc/py-texttable@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pytest-runner>=2.0.0:devel/py-pytest-runner@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests>=2.11.1:www/py-requests@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}libzfs>=1.0.2:devel/py-libzfs@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}dnspython>0:dns/py-dnspython@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}GitPython>0:devel/py-gitpython@${PY_FLAVOR} \
		merge:devel/rcs57

USES=		python:3.6+
USE_GITHUB=	yes
USE_PYTHON=	autoplist distutils

CONFLICTS=	py27-iocage-[0-9]*
NO_ARCH=	yes

PLIST_FILES=	${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/PKG-INFO \
		${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/SOURCES.txt \
		${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/dependency_links.txt \
		${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/entry_points.txt \
		${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/requires.txt \
		${PYTHONPREFIX_SITELIBDIR}/${PORTNAME}_lib-${PORTVERSION}-py${PYTHON_VER}.egg-info/top_level.txt

OPTIONS_DEFAULT=	GIT
OPTIONS_RADIO=	GIT_PACKAGE
OPTIONS_RADIO_GIT_PACKAGE=	GIT GIT_LITE

GIT_DESC=	depend on devel/git
GIT_LITE_DESC=	depend on devel/git-lite (bare minimum git experience)

GIT_RUN_DEPENDS=git:devel/git
GIT_LITE_RUN_DEPENDS=git:devel/git-lite

.include <bsd.port.mk>
