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
  sizeOf    _ = #{size      struct VkPhysicalDeviceDrmPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceDrmPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDrmPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"hasPrimary" ptr)
       <*> peek (offset @"hasRender" ptr)
       <*> peek (offset @"primaryMajor" ptr)
       <*> peek (offset @"primaryMinor" ptr)
       <*> peek (offset @"renderMajor" ptr)
       <*> peek (offset @"renderMinor" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, pNext}

instance Offset "hasPrimary" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, hasPrimary}

instance Offset "hasRender" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, hasRender}

instance Offset "primaryMajor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, primaryMajor}

instance Offset "primaryMinor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, primaryMinor}

instance Offset "renderMajor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, renderMajor}

instance Offset "renderMinor" VkPhysicalDeviceDrmPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDrmPropertiesEXT, renderMinor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDrmPropertiesEXT where

#endif