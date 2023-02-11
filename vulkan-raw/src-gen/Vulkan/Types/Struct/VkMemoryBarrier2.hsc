{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkMemoryBarrier2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags2
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryBarrier2" #-} VkMemoryBarrier2 =
       VkMemoryBarrier2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcStageMask :: VkPipelineStageFlags2
         , srcAccessMask :: VkAccessFlags2
         , dstStageMask :: VkPipelineStageFlags2
         , dstAccessMask :: VkAccessFlags2
         }

instance Storable VkMemoryBarrier2 where
  sizeOf    _ = #{size      struct VkMemoryBarrier2}
  alignment _ = #{alignment struct VkMemoryBarrier2}

  peek ptr = 
    VkMemoryBarrier2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcStageMask" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstStageMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"dstAccessMask" ptr val

instance Offset "sType" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, sType}

instance Offset "pNext" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, pNext}

instance Offset "srcStageMask" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, srcStageMask}

instance Offset "srcAccessMask" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, srcAccessMask}

instance Offset "dstStageMask" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, dstStageMask}

instance Offset "dstAccessMask" VkMemoryBarrier2 where
  rawOffset = #{offset struct VkMemoryBarrier2, dstAccessMask}

#else

module Vulkan.Types.Struct.VkMemoryBarrier2 where

#endif