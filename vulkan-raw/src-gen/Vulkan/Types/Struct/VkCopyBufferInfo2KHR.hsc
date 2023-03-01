{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkCopyBufferInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCopy2



data {-# CTYPE "vulkan/vulkan.h" "VkCopyBufferInfo2KHR" #-} VkCopyBufferInfo2KHR =
       VkCopyBufferInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcBuffer :: VkBuffer
         , dstBuffer :: VkBuffer
         , regionCount :: #{type uint32_t}
         , pRegions :: Ptr VkBufferCopy2
         }

instance Storable VkCopyBufferInfo2KHR where
  sizeOf    _ = #{size      VkCopyBufferInfo2KHR}
  alignment _ = #{alignment VkCopyBufferInfo2KHR}

  peek ptr = 
    VkCopyBufferInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"regionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"dstBuffer" ptr val
    pokeField @"regionCount" ptr val
    pokeField @"pRegions" ptr val

instance Offset "sType" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, sType}

instance Offset "pNext" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, pNext}

instance Offset "srcBuffer" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, srcBuffer}

instance Offset "dstBuffer" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, dstBuffer}

instance Offset "regionCount" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, regionCount}

instance Offset "pRegions" VkCopyBufferInfo2KHR where
  rawOffset = #{offset VkCopyBufferInfo2KHR, pRegions}

#else

module Vulkan.Types.Struct.VkCopyBufferInfo2KHR where

#endif