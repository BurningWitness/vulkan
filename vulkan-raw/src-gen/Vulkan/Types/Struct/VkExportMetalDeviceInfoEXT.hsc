{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkExportMetalDeviceInfoEXT}
  alignment _ = #{alignment VkExportMetalDeviceInfoEXT}

  peek ptr = 
    VkExportMetalDeviceInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mtlDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mtlDevice" ptr val

instance Offset "sType" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset VkExportMetalDeviceInfoEXT, sType}

instance Offset "pNext" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset VkExportMetalDeviceInfoEXT, pNext}

instance Offset "mtlDevice" VkExportMetalDeviceInfoEXT where
  rawOffset = #{offset VkExportMetalDeviceInfoEXT, mtlDevice}

#else

module Vulkan.Types.Struct.VkExportMetalDeviceInfoEXT where

#endif