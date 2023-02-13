{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewProperties" #-} VkPhysicalDeviceMultiviewProperties =
       VkPhysicalDeviceMultiviewProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxMultiviewViewCount :: #{type uint32_t} -- ^ max number of views in a subpass
         , maxMultiviewInstanceIndex :: #{type uint32_t} -- ^ max instance index for a draw in a multiview subpass
         }

instance Storable VkPhysicalDeviceMultiviewProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceMultiviewProperties}
  alignment _ = #{alignment VkPhysicalDeviceMultiviewProperties}

  peek ptr = 
    VkPhysicalDeviceMultiviewProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMultiviewViewCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMultiviewInstanceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxMultiviewViewCount" ptr val
    pokeField @"maxMultiviewInstanceIndex" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewProperties where
  rawOffset = #{offset VkPhysicalDeviceMultiviewProperties, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewProperties where
  rawOffset = #{offset VkPhysicalDeviceMultiviewProperties, pNext}

instance Offset "maxMultiviewViewCount" VkPhysicalDeviceMultiviewProperties where
  rawOffset = #{offset VkPhysicalDeviceMultiviewProperties, maxMultiviewViewCount}

instance Offset "maxMultiviewInstanceIndex" VkPhysicalDeviceMultiviewProperties where
  rawOffset = #{offset VkPhysicalDeviceMultiviewProperties, maxMultiviewInstanceIndex}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewProperties where

#endif