{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Struct.VkPhysicalDeviceBufferAddressFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBufferAddressFeaturesEXT" #-} VkPhysicalDeviceBufferAddressFeaturesEXT =
       VkPhysicalDeviceBufferAddressFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferDeviceAddress :: VkBool32
         , bufferDeviceAddressCaptureReplay :: VkBool32
         , bufferDeviceAddressMultiDevice :: VkBool32
         }

instance Storable VkPhysicalDeviceBufferAddressFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceBufferAddressFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceBufferAddressFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceBufferAddressFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"bufferDeviceAddress" ptr)
       <*> peek (offset @"bufferDeviceAddressCaptureReplay" ptr)
       <*> peek (offset @"bufferDeviceAddressMultiDevice" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferDeviceAddress" ptr val
    pokeField @"bufferDeviceAddressCaptureReplay" ptr val
    pokeField @"bufferDeviceAddressMultiDevice" ptr val

instance Offset "sType" VkPhysicalDeviceBufferAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferAddressFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceBufferAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferAddressFeaturesEXT, pNext}

instance Offset "bufferDeviceAddress" VkPhysicalDeviceBufferAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferAddressFeaturesEXT, bufferDeviceAddress}

instance Offset "bufferDeviceAddressCaptureReplay" VkPhysicalDeviceBufferAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferAddressFeaturesEXT, bufferDeviceAddressCaptureReplay}

instance Offset "bufferDeviceAddressMultiDevice" VkPhysicalDeviceBufferAddressFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBufferAddressFeaturesEXT, bufferDeviceAddressMultiDevice}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBufferAddressFeaturesEXT where

#endif