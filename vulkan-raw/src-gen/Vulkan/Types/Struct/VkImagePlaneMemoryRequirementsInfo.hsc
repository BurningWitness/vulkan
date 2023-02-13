{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkImagePlaneMemoryRequirementsInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImagePlaneMemoryRequirementsInfo" #-} VkImagePlaneMemoryRequirementsInfo =
       VkImagePlaneMemoryRequirementsInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkImagePlaneMemoryRequirementsInfo where
  sizeOf    _ = #{size      VkImagePlaneMemoryRequirementsInfo}
  alignment _ = #{alignment VkImagePlaneMemoryRequirementsInfo}

  peek ptr = 
    VkImagePlaneMemoryRequirementsInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkImagePlaneMemoryRequirementsInfo where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfo, sType}

instance Offset "pNext" VkImagePlaneMemoryRequirementsInfo where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfo, pNext}

instance Offset "planeAspect" VkImagePlaneMemoryRequirementsInfo where
  rawOffset = #{offset VkImagePlaneMemoryRequirementsInfo, planeAspect}

#else

module Vulkan.Types.Struct.VkImagePlaneMemoryRequirementsInfo where

#endif