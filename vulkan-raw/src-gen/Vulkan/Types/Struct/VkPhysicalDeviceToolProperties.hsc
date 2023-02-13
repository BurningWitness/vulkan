{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceToolProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkToolPurposeFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceToolProperties" #-} VkPhysicalDeviceToolProperties =
       VkPhysicalDeviceToolProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , name :: #{type char}
         , version :: #{type char}
         , purposes :: VkToolPurposeFlags
         , description :: #{type char}
         , layer :: #{type char}
         }

instance Storable VkPhysicalDeviceToolProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceToolProperties}
  alignment _ = #{alignment VkPhysicalDeviceToolProperties}

  peek ptr = 
    VkPhysicalDeviceToolProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"name" ptr)
       <*> peek (offset @"version" ptr)
       <*> peek (offset @"purposes" ptr)
       <*> peek (offset @"description" ptr)
       <*> peek (offset @"layer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"name" ptr val
    pokeField @"version" ptr val
    pokeField @"purposes" ptr val
    pokeField @"description" ptr val
    pokeField @"layer" ptr val

instance Offset "sType" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, sType}

instance Offset "pNext" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, pNext}

instance Offset "name" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, name}

instance Offset "version" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, version}

instance Offset "purposes" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, purposes}

instance Offset "description" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, description}

instance Offset "layer" VkPhysicalDeviceToolProperties where
  rawOffset = #{offset VkPhysicalDeviceToolProperties, layer}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceToolProperties where

#endif