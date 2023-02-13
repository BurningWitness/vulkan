{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_physical_device_drm

module Vulkan.Types.Struct.VkPhysicalDeviceDrmPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDrmPropertiesEXT" #-} VkPhysicalDeviceDrmPropertiesEXT =
       VkPhysicalDeviceDrmPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , hasPrimary :: VkBool32
         , hasRender :: VkBool32
         , primaryMajor :: #{type int64_t}
         , primaryMinor :: #{type int64_t}
         , renderMajor :: #{type int64_t}
         , renderMinor :: #{type int64_t}
         }

instance Storable VkPhysicalDeviceDrmPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDrmPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDrmPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDrmPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hasPrimary" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hasRender" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primaryMajor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primaryMinor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderMajor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderMinor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"hasPrimary" ptr val
    pokeField @"hasRender" ptr val
    pokeField @"primaryMajor" ptr val
    pokeField @"primaryMinor" ptr val
    pokeField @"renderMajor" ptr val
    pokeField @"renderMinor" ptr val

instance Offset "sType" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, pNext}

instance Offset "hasPrimary" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, hasPrimary}

instance Offset "hasRender" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, hasRender}

instance Offset "primaryMajor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, primaryMajor}

instance Offset "primaryMinor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, primaryMinor}

instance Offset "renderMajor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, renderMajor}

instance Offset "renderMinor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceDrmPropertiesEXT, renderMinor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDrmPropertiesEXT where

#endif