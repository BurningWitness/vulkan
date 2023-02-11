{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBindImagePlaneMemoryInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBindImagePlaneMemoryInfo" #-} VkBindImagePlaneMemoryInfo =
       VkBindImagePlaneMemoryInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkBindImagePlaneMemoryInfo where
  sizeOf    _ = #{size      struct VkBindImagePlaneMemoryInfo}
  alignment _ = #{alignment struct VkBindImagePlaneMemoryInfo}

  peek ptr = 
    VkBindImagePlaneMemoryInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkBindImagePlaneMemoryInfo where
  rawOffset = #{offset struct VkBindImagePlaneMemoryInfo, sType}

instance Offset "pNext" VkBindImagePlaneMemoryInfo where
  rawOffset = #{offset struct VkBindImagePlaneMemoryInfo, pNext}

instance Offset "planeAspect" VkBindImagePlaneMemoryInfo where
  rawOffset = #{offset struct VkBindImagePlaneMemoryInfo, planeAspect}

#else

module Vulkan.Types.Struct.VkBindImagePlaneMemoryInfo where

#endif