{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceFaultAddressInfoEXT
import Vulkan.Types.Struct.VkDeviceFaultVendorInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultInfoEXT" #-} VkDeviceFaultInfoEXT =
       VkDeviceFaultInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , description :: #{type char} -- ^ Free-form description of the fault
         , pAddressInfos :: Ptr VkDeviceFaultAddressInfoEXT
         , pVendorInfos :: Ptr VkDeviceFaultVendorInfoEXT
         , pVendorBinaryData :: Ptr ()
         }

instance Storable VkDeviceFaultInfoEXT where
  sizeOf    _ = #{size      VkDeviceFaultInfoEXT}
  alignment _ = #{alignment VkDeviceFaultInfoEXT}

  peek ptr = 
    VkDeviceFaultInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAddressInfos" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVendorInfos" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVendorBinaryData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"description" ptr val
    pokeField @"pAddressInfos" ptr val
    pokeField @"pVendorInfos" ptr val
    pokeField @"pVendorBinaryData" ptr val

instance Offset "sType" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, sType}

instance Offset "pNext" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, pNext}

instance Offset "description" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, description}

instance Offset "pAddressInfos" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, pAddressInfos}

instance Offset "pVendorInfos" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, pVendorInfos}

instance Offset "pVendorBinaryData" VkDeviceFaultInfoEXT where
  rawOffset = #{offset VkDeviceFaultInfoEXT, pVendorBinaryData}

#else

module Vulkan.Types.Struct.VkDeviceFaultInfoEXT where

#endif