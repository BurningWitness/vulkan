{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBufferDeviceAddressFeaturesEXT" #-} VkPhysicalDeviceBufferDeviceAddressFeaturesEXT =
       VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferDeviceAddress :: VkBool32
         , bufferDeviceAddressCaptureReplay :: VkBool32
         , bufferDeviceAddressMultiDevice :: VkBool32
         }

instance Storable VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceBufferDeviceAddressFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceBufferDeviceAddressFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceBufferDeviceAddressFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferDeviceAddressMultiDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferDeviceAddress" ptr val
    pokeField @"bufferDeviceAddressCaptureReplay" ptr val
    pokeField @"bufferDeviceAddressMultiDevice" ptr val

instance Offset "sType" VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesEXT, pNext}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesEXT, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesEXT, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferDeviceAddressFeaturesEXT, bufferDeviceAddressMultiDevice}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesEXT where

#endif