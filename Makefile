JDK_VERSION = 8u65
CENTOS_VERSION = 6.8
MAVEN_VERSION = 3.3.9

docker:
	docker build --tag tantalic/centos-oracle-jdk-maven:$(CENTOS_VERSION)_1.$(JDK_VERSION)_$(MAVEN_VERSION) .
