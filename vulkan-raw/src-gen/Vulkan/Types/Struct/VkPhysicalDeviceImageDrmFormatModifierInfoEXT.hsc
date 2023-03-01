{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Struct.VkPhysicalDeviceImageDrmFormatModifierInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSharingMode
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageDrmFormatModifierInfoEXT" #-} VkPhysicalDeviceImageDrmFormatModifierInfoEXT =
       VkPhysicalDeviceImageDrmFormatModifierInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , drmFormatModifier :: #{type uint64_t}
         , sharingMode :: VkSharingMode
         , queueFamilyIndexCount :: #{type uint32_t}
         , pQueueFamilyIndices :: Ptr #{type uint32_t}
         }

instance Storable VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceImageDrmFormatModifierInfoEXT}
  alignment _ = #{alignment VkPhysicalDeviceImageDrmFormatModifierInfoEXT}

  peek ptr = 
    VkPhysicalDeviceImageDrmFormatModifierInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"drmFormatModifier" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sharingMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pQueueFamilyIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"drmFormatModifier" ptr val
    pokeField @"sharingMode" ptr val
    pokeField @"queueFamilyIndexCount" ptr val
    pokeField @"pQueueFamilyIndices" ptr val

instance Offset "sType" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, pNext}

instance Offset "drmFormatModifier" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, drmFormatModifier}

instance Offset "sharingMode" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, sharingMode}

instance Offset "queueFamilyIndexCount" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, queueFamilyIndexCount}

instance Offset "pQueueFamilyIndices" VkPhysicalDeviceImageDrmFormatModifierInfoEXT where
  rawOffset = #{offset VkPhysicalDeviceImageDrmFormatModifierInfoEXT, pQueueFamilyIndices}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageDrmFormatModifierInfoEXT where

#endif