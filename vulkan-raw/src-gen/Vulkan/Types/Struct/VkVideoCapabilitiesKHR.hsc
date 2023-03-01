{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCapabilityFlagsKHR
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkVideoCapabilitiesKHR" #-} VkVideoCapabilitiesKHR =
       VkVideoCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoCapabilityFlagsKHR
         , minBitstreamBufferOffsetAlignment :: VkDeviceSize
         , minBitstreamBufferSizeAlignment :: VkDeviceSize
         , pictureAccessGranularity :: VkExtent2D
         , minCodedExtent :: VkExtent2D
         , maxCodedExtent :: VkExtent2D
         , maxDpbSlots :: #{type uint32_t}
         , maxActiveReferencePictures :: #{type uint32_t}
         , stdHeaderVersion :: VkExtensionProperties
         }

instance Storable VkVideoCapabilitiesKHR where
  sizeOf    _ = #{size      VkVideoCapabilitiesKHR}
  alignment _ = #{alignment VkVideoCapabilitiesKHR}

  peek ptr = 
    VkVideoCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBitstreamBufferOffsetAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBitstreamBufferSizeAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pictureAccessGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minCodedExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxCodedExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDpbSlots" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxActiveReferencePictures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdHeaderVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"minBitstreamBufferOffsetAlignment" ptr val
    pokeField @"minBitstreamBufferSizeAlignment" ptr val
    pokeField @"pictureAccessGranularity" ptr val
    pokeField @"minCodedExtent" ptr val
    pokeField @"maxCodedExtent" ptr val
    pokeField @"maxDpbSlots" ptr val
    pokeField @"maxActiveReferencePictures" ptr val
    pokeField @"stdHeaderVersion" ptr val

instance Offset "sType" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, sType}

instance Offset "pNext" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, pNext}

instance Offset "flags" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, flags}

instance Offset "minBitstreamBufferOffsetAlignment" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, minBitstreamBufferOffsetAlignment}

instance Offset "minBitstreamBufferSizeAlignment" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, minBitstreamBufferSizeAlignment}

instance Offset "pictureAccessGranularity" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, pictureAccessGranularity}

instance Offset "minCodedExtent" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, minCodedExtent}

instance Offset "maxCodedExtent" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, maxCodedExtent}

instance Offset "maxDpbSlots" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, maxDpbSlots}

instance Offset "maxActiveReferencePictures" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, maxActiveReferencePictures}

instance Offset "stdHeaderVersion" VkVideoCapabilitiesKHR where
  rawOffset = #{offset VkVideoCapabilitiesKHR, stdHeaderVersion}

#else

module Vulkan.Types.Struct.VkVideoCapabilitiesKHR where

#endif