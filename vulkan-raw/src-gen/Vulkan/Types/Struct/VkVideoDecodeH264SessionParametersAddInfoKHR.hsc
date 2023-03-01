{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersAddInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264SessionParametersAddInfoKHR" #-} VkVideoDecodeH264SessionParametersAddInfoKHR =
       VkVideoDecodeH264SessionParametersAddInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdSPSCount :: #{type uint32_t}
         , pStdSPSs :: Ptr StdVideoH264SequenceParameterSet
         , stdPPSCount :: #{type uint32_t}
         , pStdPPSs :: Ptr StdVideoH264PictureParameterSet -- ^ List of Picture Parameters associated with the spsStd, above
         }

instance Storable VkVideoDecodeH264SessionParametersAddInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH264SessionParametersAddInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH264SessionParametersAddInfoKHR}

  peek ptr = 
    VkVideoDecodeH264SessionParametersAddInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdSPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdSPSs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdPPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdPPSs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdSPSCount" ptr val
    pokeField @"pStdSPSs" ptr val
    pokeField @"stdPPSCount" ptr val
    pokeField @"pStdPPSs" ptr val

instance Offset "sType" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, pNext}

instance Offset "stdSPSCount" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, stdSPSCount}

instance Offset "pStdSPSs" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, pStdSPSs}

instance Offset "stdPPSCount" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, stdPPSCount}

instance Offset "pStdPPSs" VkVideoDecodeH264SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersAddInfoKHR, pStdPPSs}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersAddInfoKHR where

#endif