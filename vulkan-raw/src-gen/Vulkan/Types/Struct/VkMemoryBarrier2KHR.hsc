{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkMemoryBarrier2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags2
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryBarrier2KHR" #-} VkMemoryBarrier2KHR =
       VkMemoryBarrier2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcStageMask :: VkPipelineStageFlags2
         , srcAccessMask :: VkAccessFlags2
         , dstStageMask :: VkPipelineStageFlags2
         , dstAccessMask :: VkAccessFlags2
         }

instance Storable VkMemoryBarrier2KHR where
  sizeOf    _ = #{size      VkMemoryBarrier2KHR}
  alignment _ = #{alignment VkMemoryBarrier2KHR}

  peek ptr = 
    VkMemoryBarrier2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"dstAccessMask" ptr val

instance Offset "sType" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, sType}

instance Offset "pNext" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, pNext}

instance Offset "srcStageMask" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, srcStageMask}

instance Offset "srcAccessMask" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, srcAccessMask}

instance Offset "dstStageMask" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, dstStageMask}

instance Offset "dstAccessMask" VkMemoryBarrier2KHR where
  rawOffset = #{offset VkMemoryBarrier2KHR, dstAccessMask}

#else

module Vulkan.Types.Struct.VkMemoryBarrier2KHR where

#endif