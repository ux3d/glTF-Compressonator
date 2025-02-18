//===============================================================================
// Copyright (c) 2014-2016  Advanced Micro Devices, Inc. All rights reserved.
//===============================================================================
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files(the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and / or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions :
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//  File Name:   Codec_BASIS.cpp
//  Description: implementation of the CCodec_BASIS class
//
//////////////////////////////////////////////////////////////////////////////

#ifndef _CODEC_BASIS_H_INCLUDED_
#define _CODEC_BASIS_H_INCLUDED_

#include "Compressonator.h"
#include "Codec.h"

#include <thread>

class CCodec_BASIS : public CCodec
{

private:

    double m_Quality;

    CodecBufferType m_srcBufferType;

public:
    CCodec_BASIS();
    ~CCodec_BASIS();

    virtual bool SetParameter(const CMP_CHAR* pszParamName, CMP_DWORD dwValue);

    virtual bool SetParameter(const CMP_CHAR* pszParamName, CODECFLOAT fValue);
    virtual bool GetParameter(const CMP_CHAR* pszParamName, CODECFLOAT& fValue);

    // Required interfaces
    virtual CCodecBuffer* CreateBuffer(CMP_BYTE nBlockWidth, CMP_BYTE nBlockHeight, CMP_BYTE nBlockDepth, CMP_DWORD dwWidth, CMP_DWORD dwHeight, CMP_DWORD dwPitch = 0, CMP_BYTE* pData = 0) const;
    virtual CodecError Compress(CCodecBuffer& bufferIn, CCodecBuffer& bufferOut, Codec_Feedback_Proc pFeedbackProc = NULL, CMP_DWORD_PTR pUser1 = NULL, CMP_DWORD_PTR pUser2 = NULL);
    virtual CodecError Decompress(CCodecBuffer& bufferIn, CCodecBuffer& bufferOut, Codec_Feedback_Proc pFeedbackProc = NULL, CMP_DWORD_PTR pUser1 = NULL, CMP_DWORD_PTR pUser2 = NULL);
};

#endif
