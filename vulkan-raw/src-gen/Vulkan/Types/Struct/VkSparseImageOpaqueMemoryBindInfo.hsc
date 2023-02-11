{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseImageOpaqueMemoryBindInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseMemoryBind



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageOpaqueMemoryBindInfo" #-} VkSparseImageOpaqueMemoryBindInfo =
       VkSparseImageOpaqueMemoryBindInfo
         { image :: VkImage
         , bindCount :: #{type uint32_t}
         , pBinds :: Ptr VkSparseMemoryBind
         }

instance Storable VkSparseImageOpaqueMemoryBindInfo where
  sizeOf    _ = #{size      struct VkSparseImageOpaqueMemoryBindInfo}
  alignment _ = #{alignment struct VkSparseImageOpaqueMemoryBindInfo}

  peek ptr = 
    VkSparseImageOpaqueMemoryBindInfo
       <$> peek (offset @"image" ptr)
       <*> peek (offset @"bindCount" ptr)
       <*> peek (offset @"pBinds" ptr)

  poke ptr val = do
    pokeField @"image" ptr val
    pokeField @"bindCount" ptr val
    pokeField @"pBinds" ptr val

instance Offset "image" VkSparseImageOpaqueMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageOpaqueMemoryBindInfo, image}

instance Offset "bindCount" VkSparseImageOpaqueMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageOpaqueMemoryBindInfo, bindCount}

instance Offset "pBinds" VkSparseImageOpaqueMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageOpaqueMemoryBindInfo, pBinds}