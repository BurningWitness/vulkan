{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_tooling_info

module Vulkan.Types.Struct.VkPhysicalDeviceToolPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkToolPurposeFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceToolPropertiesEXT" #-} VkPhysicalDeviceToolPropertiesEXT =
       VkPhysicalDeviceToolPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , name :: #{type char}
         , version :: #{type char}
         , purposes :: VkToolPurposeFlags
         , description :: #{type char}
         , layer :: #{type char}
         }

instance Storable VkPhysicalDeviceToolPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceToolPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceToolPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceToolPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"version" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"purposes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"name" ptr val
    pokeField @"version" ptr val
    pokeField @"purposes" ptr val
    pokeField @"description" ptr val
    pokeField @"layer" ptr val

instance Offset "sType" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, pNext}

instance Offset "name" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, name}

instance Offset "version" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, version}

instance Offset "purposes" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, purposes}

instance Offset "description" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, description}

instance Offset "layer" VkPhysicalDeviceToolPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceToolPropertiesEXT, layer}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceToolPropertiesEXT where

#endif