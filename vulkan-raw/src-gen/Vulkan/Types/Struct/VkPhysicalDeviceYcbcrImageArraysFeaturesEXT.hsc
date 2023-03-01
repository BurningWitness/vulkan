{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_ycbcr_image_arrays

module Vulkan.Types.Struct.VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceYcbcrImageArraysFeaturesEXT" #-} VkPhysicalDeviceYcbcrImageArraysFeaturesEXT =
       VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , ycbcrImageArrays :: VkBool32
         }

instance Storable VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceYcbcrImageArraysFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceYcbcrImageArraysFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceYcbcrImageArraysFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ycbcrImageArrays" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"ycbcrImageArrays" ptr val

instance Offset "sType" VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceYcbcrImageArraysFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceYcbcrImageArraysFeaturesEXT, pNext}

instance Offset "ycbcrImageArrays" VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceYcbcrImageArraysFeaturesEXT, ycbcrImageArrays}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceYcbcrImageArraysFeaturesEXT where

#endif