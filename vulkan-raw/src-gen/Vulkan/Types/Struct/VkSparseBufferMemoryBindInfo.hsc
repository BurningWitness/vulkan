{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseBufferMemoryBindInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseMemoryBind



data {-# CTYPE "vulkan/vulkan.h" "VkSparseBufferMemoryBindInfo" #-} VkSparseBufferMemoryBindInfo =
       VkSparseBufferMemoryBindInfo
         { buffer :: VkBuffer
         , bindCount :: #{type uint32_t}
         , pBinds :: Ptr VkSparseMemoryBind
         }

instance Storable VkSparseBufferMemoryBindInfo where
  sizeOf    _ = #{size      VkSparseBufferMemoryBindInfo}
  alignment _ = #{alignment VkSparseBufferMemoryBindInfo}

  peek ptr = 
    VkSparseBufferMemoryBindInfo
       <$> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bindCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBinds" ptr)

  poke ptr val = do
    pokeField @"buffer" ptr val
    pokeField @"bindCount" ptr val
    pokeField @"pBinds" ptr val

instance Offset "buffer" VkSparseBufferMemoryBindInfo where
  rawOffset = #{offset VkSparseBufferMemoryBindInfo, buffer}

instance Offset "bindCount" VkSparseBufferMemoryBindInfo where
  rawOffset = #{offset VkSparseBufferMemoryBindInfo, bindCount}

instance Offset "pBinds" VkSparseBufferMemoryBindInfo where
  rawOffset = #{offset VkSparseBufferMemoryBindInfo, pBinds}