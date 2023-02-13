{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkCopyBufferInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyBufferInfo2" #-} VkCopyBufferInfo2 =
       VkCopyBufferInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcBuffer :: VkBuffer
         , dstBuffer :: VkBuffer
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferCopy2
         }

instance Storable VkCopyBufferInfo2 where
  sizeOf    _ = #{size      VkCopyBufferInfo2}
  alignment _ = #{alignment VkCopyBufferInfo2}

  peek ptr = 
    VkCopyBufferInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcBuffer" ptr)
       <*> peek (offset @"dstBuffer" ptr)
       <*> peek (offset @"regionCount" ptr)
       <*> peek (offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"dstBuffer" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, sType}

instance Offset "pNext" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, pNext}

instance Offset "srcBuffer" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, srcBuffer}

instance Offset "dstBuffer" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, dstBuffer}

instance Offset "regionCount" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, regionCount}

instance Offset "pRegions" VkCopyBufferInfo2 where
  rawOffset = #{offset VkCopyBufferInfo2, pRegions}

#else

module Vulkan.Types.Struct.VkCopyBufferInfo2 where

#endif