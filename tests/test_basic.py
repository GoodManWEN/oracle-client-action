import os , sys
sys.path.append(os.getcwd())
import pytest
import asyncio
from cx_Oracle_async import *

@pytest.mark.asyncio
async def test_new_table():
    dsn = makedsn(
        host = 'localhost', 
        port = '1521', 
        sid = 'xe'
    )
    oracle_pool = await create_pool(
        user = 'system',
        password = 'oracle',
        dsn = dsn
    )

    async with oracle_pool.acquire() as connection:
    	async with connection.cursor() as cursor:
    		await cursor.execute("SELECT COUNT(*) FROM USER_TABLES")
    		ret = await cursor.fetchone()
    		assert ret
    		assert ret[0] > 0