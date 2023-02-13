{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultVendorBinaryHeaderVersionOneEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceFaultVendorBinaryHeaderVersionEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultVendorBinaryHeaderVersionOneEXT" #-} VkDeviceFaultVendorBinaryHeaderVersionOneEXT =
       VkDeviceFaultVendorBinaryHeaderVersionOneEXT
         { headerSize :: #{type uint32_t}
         , headerVersion :: VkDeviceFaultVendorBinaryHeaderVersionEXT
         , vendorID :: #{type uint32_t}
         , deviceID :: #{type uint32_t}
         , driverVersion :: #{type uint32_t}
         , pipelineCacheUUID :: #{type uint8_t}
         , applicationNameOffset :: #{type uint32_t}
         , applicationVersion :: #{type uint32_t}
         , engineNameOffset :: #{type uint32_t}
         }

instance Storable VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  sizeOf    _ = #{size      VkDeviceFaultVendorBinaryHeaderVersionOneEXT}
  alignment _ = #{alignment VkDeviceFaultVendorBinaryHeaderVersionOneEXT}

  peek ptr = 
    VkDeviceFaultVendorBinaryHeaderVersionOneEXT
       <$> peek (offset @"headerSize" ptr)
       <*> peek (offset @"headerVersion" ptr)
       <*> peek (offset @"vendorID" ptr)
       <*> peek (offset @"deviceID" ptr)
       <*> peek (offset @"driverVersion" ptr)
       <*> peek (offset @"pipelineCacheUUID" ptr)
       <*> peek (offset @"applicationNameOffset" ptr)
       <*> peek (offset @"applicationVersion" ptr)
       <*> peek (offset @"engineNameOffset" ptr)

  poke ptr val = do
    pokeField @"headerSize" ptr val
    pokeField @"headerVersion" ptr val
    pokeField @"vendorID" ptr val
    pokeField @"deviceID" ptr val
    pokeField @"driverVersion" ptr val
    pokeField @"pipelineCacheUUID" ptr val
    pokeField @"applicationNameOffset" ptr val
    pokeField @"applicationVersion" ptr val
    pokeField @"engineNameOffset" ptr val

instance Offset "headerSize" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, headerSize}

instance Offset "headerVersion" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, headerVersion}

instance Offset "vendorID" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, vendorID}

instance Offset "deviceID" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, deviceID}

instance Offset "driverVersion" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, driverVersion}

instance Offset "pipelineCacheUUID" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, pipelineCacheUUID}

instance Offset "applicationNameOffset" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, applicationNameOffset}

instance Offset "applicationVersion" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, applicationVersion}

instance Offset "engineNameOffset" VkDeviceFaultVendorBinaryHeaderVersionOneEXT where
  rawOffset = #{offset VkDeviceFaultVendorBinaryHeaderVersionOneEXT, engineNameOffset}

#else

module Vulkan.Types.Struct.VkDeviceFaultVendorBinaryHeaderVersionOneEXT where

#endif