//
//  pooling.h
//  matconv
//
//  Created by Andrea Vedaldi on 11/02/2014.
//  Copyright (c) 2014 Andrea Vedaldi. All rights reserved.
//

#ifndef __matconv__pooling__
#define __matconv__pooling__

template<typename T>
void maxPooling(T* pooled,
                T const data,
                size_t width,
                size_t height,
                size_t depth,
                size_t poolSize,
                size_t poolStride) ;

#endif /* defined(__matconv__pooling__) */
