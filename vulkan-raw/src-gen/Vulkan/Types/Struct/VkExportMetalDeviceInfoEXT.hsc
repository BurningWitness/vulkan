{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalDeviceInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalDeviceInfoEXT" #-} VkExportMetalDeviceInfoEXT =
       VkExportMetalDeviceInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mtlDevice :: MTLDevice_id
         }

instance Storable VkExportMetalDeviceInfoEXT where
  sizeOf    _ = #{size      struct VkExportMetalDeviceInfoEXT}
  alignment _ = #{alignment struct VkExportMetalDeviceInfoEXT}

  peek ptr = 
    VkExportMetalDeviceInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mtlDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mtlDevice" ptr val

instance Offset "sType" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset struct VkExportMetalDeviceInfoEXT, sType}

instance Offset "pNext" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset struct VkExportMetalDeviceInfoEXT, pNext}

instance Offset "mtlDevice" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset struct VkExportMetalDeviceInfoEXT, mtlDevice}

#else

module Vulkan.Types.Struct.VkExportMetalDeviceInfoEXT where

#endif