#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sqlite3.h"

/*#define DEBUG*/
#define DEBUG

class facedb
{
	facedb();
	~facedb()

public:
	FaceDb_Open(const char* filename,const sqlite3 **ppDb);
	FaceDb_Close(const sqlite3 **ppDb);
	FaceDb_exec( db , sql , NULL , NULL , &zErrMsg ); 	
	FaceDb_prepare(db, psql, strlen(psql), &stmt, NULL);  
	FaceDB_bind_blob(stmt, 1, &pbuf, 16, NULL); 
	FaceDb_step(stmt);
	sqlite3_column_int(stmt, 0);
	sqlite3_column_bytes(stmt, 2); 
	sqlite3_column_text(stmt, 1);  
	qlite3_column_blob(stmt, 2);
	sqlite3_finalize(stmt);
	FaceDb_sprinf();
	FaceDb_fprintf();
private:
}

int FaceDb_open(const char* filename,sqlite3 **ppDb)
{


}

int main( void )
{	
	float buf[4] ;
	char *pbuf = (char*)buf;
	int len = 10;
	sqlite3 *db=NULL;	
	char *zErrMsg = 0; 
	sqlite3_stmt *stmt;	
	int rc; 	
	for(int i=0;i<4;i++)
	{
		buf[i] = i+0.5;
	}

	rc = sqlite3_open("faceID.db", &db); //打开指定的数据库文件,如果不存在将创建一个同名的数据库文件	
	if( rc )	
	{		
		fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));		
		sqlite3_close(db);		
		return 0;	
	}	
	char *sql = " CREATE TABLE faceinf(\
	ID INTEGER PRIMARY KEY,\
	FaceID INTEGER,\
	Name TEXT(32),\
	Feature BLOB(1024)\
	);" ;	
	sqlite3_exec( db , sql , NULL , NULL , &zErrMsg ); 	
	#ifdef _DEBUG_		
	printf("zErrMsg = %s \n", zErrMsg);	
	#endif 	//插入数据 	
	char psql[512];
/*
	char buf[255] = {0};	
	int len = sprintf(buf, "All the Fuel Level is %4.2f", buf[0]);	
	for (int i = 1; i < len; i++)	
	{		
		len += sprintf(buf + len, ", %4.2f", buf[i]);	
	}
*/

	sprintf(psql, "insert into faceinf values(NULL,1,'126',?)");    
	   
	rc = sqlite3_prepare(db, psql, strlen(psql), &stmt, NULL);    
	if (rc != SQLITE_OK) 
	{        
		fprintf(stderr, "db prepare fail, errcode[%d], errmsg[%s]\n", rc, sqlite3_errmsg(db));        
		sqlite3_close(db);        
		return -1;    
	}

 	rc = sqlite3_bind_blob(stmt, 1, &pbuf, 16, NULL);    
 	if (rc != SQLITE_OK) 
 	{        
 		fprintf(stderr, "db bind fail, errcode[%d], errmsg[%s]\n", rc, sqlite3_errmsg(db));        
 		sqlite3_close(db);        
 		return -1;    
 	} 

 	rc = sqlite3_step(stmt);    
 	if (rc != SQLITE_DONE) 
 	{        
 		fprintf(stderr, "db insert fail, errcode[%d], errmsg[%s]\n", rc, sqlite3_errmsg(db));        
 		sqlite3_close(db);        
 		return -1;    
 	}     
 	sqlite3_finalize(stmt);
	//sqlite3_close(db); //关闭数据库return 0; 

 	//int sqlite_find_count(sqlite3 *db)

	memset(psql,0,512);
	sprintf(psql, "select FaceID, Name ,Feature from faceinf");
	rc = sqlite3_prepare(db, psql, strlen(psql), &stmt, NULL);    
	if (rc != SQLITE_OK) 
	{        
		fprintf(stderr, "db prepare fail, errcode[%d], errmsg[%s]\n", rc, sqlite3_errmsg(db));        
		sqlite3_close(db);        
		return -1;    
	}     
       
	rc = sqlite3_step(stmt);        
	if (rc == SQLITE_ROW) 
	{            
		int id, id1, len,len1;            
		void *content = NULL;    
		void *content1 = NULL;          
		struct facedata *facedt = NULL;           
		int ID ;          
		char name[32];
		int feature[256];                             
		id = sqlite3_column_int(stmt, 0);   //ID


		content = (void *)sqlite3_column_text(stmt, 1); //name        
		len = sqlite3_column_bytes(stmt, 1);       
		char *pdat = (char*)content;

		content1 = (void *)sqlite3_column_blob(stmt, 2);//feature            
		len1 = sqlite3_column_bytes(stmt, 2);            
		//facedt = (struct facedata *)content;   
		float *pdat1 = (float*)content1;
		char datab[256];
		float *pdatab = (float*)datab;
		memcpy(datab,content,16);
		printf("ssssssss%f\n",pdatab[0] );
		//printf("ID=%d, name =%s , feature %d \n", facedt->ID , facedt->name,facedt->feature[2]);   
		printf("id = %d   namelen = %d  fealen1 = %d name = %s\n",id,len,len1,pdat);    
		for(int i=0;i<32;i++)
		{
			printf("%f ", pdat1[i]);
			if(i%4 == 3)
				printf("\n");
		}  
		printf("\n");   
 
		    
	} 
	else if (rc == SQLITE_DONE) 
	{            
		printf("select done!\n");                  
	} 
	else 
	{            
		fprintf(stderr, "db step fail, errcode[%d], errmsg[%s]\n", rc, sqlite3_errmsg(db));                   
	}    
	   
	sqlite3_finalize(stmt);

	sqlite3_close(db); //关闭数据库return 0; 
}
