{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkDeviceImageMemoryRequirements where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceImageMemoryRequirements" #-} VkDeviceImageMemoryRequirements =
       VkDeviceImageMemoryRequirements
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pCreateInfo :: Ptr VkImageCreateInfo
         , planeAspect :: VkImageAspectFlagBits
         }

instance Storable VkDeviceImageMemoryRequirements where
  sizeOf    _ = #{size      VkDeviceImageMemoryRequirements}
  alignment _ = #{alignment VkDeviceImageMemoryRequirements}

  peek ptr = 
    VkDeviceImageMemoryRequirements
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCreateInfo" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"planeAspect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pCreateInfo" ptr val
    pokeField @"planeAspect" ptr val

instance Offset "sType" VkDeviceImageMemoryRequirements where
  rawOffset = #{offset VkDeviceImageMemoryRequirements, sType}

instance Offset "pNext" VkDeviceImageMemoryRequirements where
  rawOffset = #{offset VkDeviceImageMemoryRequirements, pNext}

instance Offset "pCreateInfo" VkDeviceImageMemoryRequirements where
  rawOffset = #{offset VkDeviceImageMemoryRequirements, pCreateInfo}

instance Offset "planeAspect" VkDeviceImageMemoryRequirements where
  rawOffset = #{offset VkDeviceImageMemoryRequirements, planeAspect}

#else

module Vulkan.Types.Struct.VkDeviceImageMemoryRequirements where

#endif