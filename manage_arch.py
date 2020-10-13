import os
from loguru import logger

ArchPath = 'E:\iCloud_lazyprog\downloads'

logger.add('debug.log',format='{time} {level} {message}',level='DEBUG',rotation='10MB',compression='zip')

#logger.debug(ArchPath+' debag')
#logger.info(ArchPath+' info')
#logger.error(ArchPath+' error')

@logger.catch
def start_analise():
    for root, dirs, files in os.walk(ArchPath):
        files_count=0
        logger.info('root: '+root)
        for name in files:
            files_count += 1
        logger.info('files_count: ' + str(files_count))

@logger.catch
def main():

    logger.info('start_analise()')
    start_analise()

main()